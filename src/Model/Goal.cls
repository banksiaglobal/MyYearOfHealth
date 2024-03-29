Class Model.Goal Extends %Persistent
{

Property UserId As %String(MAXLEN = 15) [ Required ];

Index UserIdIndex On UserId;

Property Name As %String(MAXLEN = 70) [ Required ];

Property IsActive As %Boolean [ Required ];

Relationship Goal As Model.DateGoal [ Cardinality = many, Inverse = Goal ];

Storage Default
{
<Data name="GoalDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>UserId</Value>
</Value>
<Value name="3">
<Value>Name</Value>
</Value>
<Value name="4">
<Value>IsActive</Value>
</Value>
</Data>
<DataLocation>^Model.GoalD</DataLocation>
<DefaultData>GoalDefaultData</DefaultData>
<IdLocation>^Model.GoalD</IdLocation>
<IndexLocation>^Model.GoalI</IndexLocation>
<StreamLocation>^Model.GoalS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
