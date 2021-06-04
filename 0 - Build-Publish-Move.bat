@echo off

dotnet restore

dotnet build --no-restore -c Release

dotnet nuget push Panosen.Resource.CSharp\bin\Release\Panosen.Resource.CSharp.*.nupkg -s https://package.savory.cn/v3/index.json --skip-duplicate

move /Y Panosen.Resource.CSharp\bin\Release\Panosen.Resource.CSharp.*.nupkg D:\LocalSavoryNuget\

pause