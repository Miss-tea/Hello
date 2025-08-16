.class public Lcom/sekai/bank/network/ApiClient;
.super Ljava/lang/Object;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sekai/bank/network/ApiClient$SignatureInterceptor;,
        Lcom/sekai/bank/network/ApiClient$AuthInterceptor;,
        Lcom/sekai/bank/network/ApiClient$ErrorInterceptor;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://sekaibank-api.chals.sekai.team/api/"

.field private static final REFRESH_TIMEOUT_SECONDS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SekaiBank-API"

.field private static final TIMEOUT_SECONDS:I = 0x1e

.field private static final TOKEN_TIMEOUT_SECONDS:I = 0x2


# instance fields
.field private final apiService:Lcom/sekai/bank/network/ApiService;

.field private final retrofit:Lretrofit2/Retrofit;

.field private final tokenManager:Lcom/sekai/bank/utils/TokenManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetapiService(Lcom/sekai/bank/network/ApiClient;)Lcom/sekai/bank/network/ApiService;
    .locals 0

    iget-object p0, p0, Lcom/sekai/bank/network/ApiClient;->apiService:Lcom/sekai/bank/network/ApiService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettokenManager(Lcom/sekai/bank/network/ApiClient;)Lcom/sekai/bank/utils/TokenManager;
    .locals 0

    iget-object p0, p0, Lcom/sekai/bank/network/ApiClient;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    return-object p0
.end method

.method public constructor <init>(Lcom/sekai/bank/utils/TokenManager;)V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sekai/bank/network/ApiClient;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    .line 50
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    .line 51
    invoke-virtual {p1, v0}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    .line 54
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 55
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 56
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 58
    invoke-direct {p0}, Lcom/sekai/bank/network/ApiClient;->createLoggingInterceptor()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/network/ApiClient$SignatureInterceptor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sekai/bank/network/ApiClient$SignatureInterceptor;-><init>(Lcom/sekai/bank/network/ApiClient;Lcom/sekai/bank/network/ApiClient-IA;)V

    .line 59
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;

    invoke-direct {v1, p0, v2}, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;-><init>(Lcom/sekai/bank/network/ApiClient;Lcom/sekai/bank/network/ApiClient-IA;)V

    .line 60
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/network/ApiClient$ErrorInterceptor;

    invoke-direct {v1, p0, v2}, Lcom/sekai/bank/network/ApiClient$ErrorInterceptor;-><init>(Lcom/sekai/bank/network/ApiClient;Lcom/sekai/bank/network/ApiClient-IA;)V

    .line 61
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 64
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "https://sekaibank-api.chals.sekai.team/api/"

    .line 65
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 66
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 67
    invoke-static {p1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/network/ApiClient;->retrofit:Lretrofit2/Retrofit;

    .line 70
    const-class v0, Lcom/sekai/bank/network/ApiService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/network/ApiService;

    iput-object p1, p0, Lcom/sekai/bank/network/ApiClient;->apiService:Lcom/sekai/bank/network/ApiService;

    return-void
.end method

.method private createLoggingInterceptor()Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 2

    .line 74
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 75
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    return-object v0
.end method


# virtual methods
.method public getApiService()Lcom/sekai/bank/network/ApiService;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sekai/bank/network/ApiClient;->apiService:Lcom/sekai/bank/network/ApiService;

    return-object v0
.end method
