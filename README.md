What's ?
===============
chef で使用する Java の cookbook です。

Usage
-----
cookbook なので berkshelf で取ってきて使いましょう。

* Berksfile
```ruby
source "https://supermarket.chef.io"

cookbook "java", git: "https://github.com/bageljp/cookbook-java.git"
```

```
berks vendor
```

#### Role and Environment attributes

* sample_role.rb
```ruby
override_attributes(
  "java" => {
    "install_flavor" => "oracle",
    "oracle" => {
      "url" => "https://s3-ap-northeast-1.amazonaws.com/archive/chef/"
    }
  }
)
```

Recipes
----------

#### java::default
Java のインストールと設定。  
openjdkの場合はyum、oraclejdkの場合はrpmだが、rpmをどこかDL出来る場所に配置する必要がある。

#### java::alternatives
インストールした Java の切り替え。

Attributes
----------

主要なやつのみ。

#### java::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><tt>['java']['oracle']['url']</tt></td>
    <td>string</td>
    <td>rpmでインストールする場合にrpmが置いてあるURL。rpmbuildしたものをs3とかに置いておくといいかも。</td>
  </tr>
</table>

TODO
----------

* oracleの公式サイトから直接DL出来るようになったらしいのでわざわざrpmを配置する必要ないかも。

