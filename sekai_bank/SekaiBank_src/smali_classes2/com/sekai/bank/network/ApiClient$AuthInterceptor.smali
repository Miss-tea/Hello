.class Lcom/sekai/bank/network/ApiClient$AuthInterceptor;
.super Ljava/lang/Object;
.source "ApiClient.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sekai/bank/network/ApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sekai/bank/network/ApiClient;


# direct methods
.method private constructor <init>(Lcom/sekai/bank/network/ApiClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;->this$0:Lcom/sekai/bank/network/ApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sekai/bank/network/ApiClient;Lcom/sekai/bank/network/ApiClient-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;-><init>(Lcom/sekai/bank/network/ApiClient;)V

    return-void
.end method

.method private addAuthHeader(Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Request;
    .locals 2

    .line 252
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bearer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 253
    const-string v0, "Authorization"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private executeTokenRefresh(Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    new-instance v0, Lcom/sekai/bank/network/ApiService$RefreshTokenRequest;

    invoke-direct {v0, p1}, Lcom/sekai/bank/network/ApiService$RefreshTokenRequest;-><init>(Ljava/lang/String;)V

    .line 286
    iget-object p1, p0, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;->this$0:Lcom/sekai/bank/network/ApiClient;

    invoke-static {p1}, Lcom/sekai/bank/network/ApiClient;->-$$Nest$fgetapiService(Lcom/sekai/bank/network/ApiClient;)Lcom/sekai/bank/network/ApiService;

    move-result-object p1

    .line 287
    invoke-interface {p1, v0}, Lcom/sekai/bank/network/ApiService;->refreshToken(Lcom/sekai/bank/network/ApiService$RefreshTokenRequest;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {v0}, Lcom/sekai/bank/models/responses/ApiResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/ApiResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/models/responses/AuthResponse;

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/AuthResponse;->getExpiresIn()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long v9, v0, v2

    .line 296
    iget-object v0, p0, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;->this$0:Lcom/sekai/bank/network/ApiClient;

    invoke-static {v0}, Lcom/sekai/bank/network/ApiClient;->-$$Nest$fgettokenManager(Lcom/sekai/bank/network/ApiClient;)Lcom/sekai/bank/utils/TokenManager;

    move-result-object v4

    .line 297
    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/AuthResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    .line 298
    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/AuthResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v6

    .line 299
    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/AuthResponse;->getUser()Lcom/sekai/bank/models/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sekai/bank/models/User;->getId()Ljava/lang/String;

    move-result-object v7

    .line 300
    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/AuthResponse;->getUser()Lcom/sekai/bank/models/User;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/models/User;->getUsername()Ljava/lang/String;

    move-result-object v8

    .line 296
    invoke-virtual/range {v4 .. v10}, Lcom/sekai/bank/utils/TokenManager;->saveTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    const-wide/16 v0, 0x3

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 302
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private getAccessTokenWithTimeout()Ljava/lang/String;
    .locals 4

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;->this$0:Lcom/sekai/bank/network/ApiClient;

    invoke-static {v0}, Lcom/sekai/bank/network/ApiClient;->-$$Nest$fgettokenManager(Lcom/sekai/bank/network/ApiClient;)Lcom/sekai/bank/utils/TokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sekai/bank/utils/TokenManager;->getAccessToken()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleTokenRefresh(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;->refreshToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;->getAccessTokenWithTimeout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    invoke-direct {p0, p2, v0}, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;->addAuthHeader(Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p2

    .line 262
    invoke-interface {p1, p2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 265
    :cond_0
    invoke-interface {p1, p2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method private isAuthEndpoint(Ljava/lang/String;)Z
    .locals 1

    .line 234
    const-string v0, "/auth/login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/auth/register"

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/health"

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isRefreshEndpoint(Ljava/lang/String;)Z
    .locals 1

    .line 240
    const-string v0, "/auth/refresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private refreshToken()Z
    .locals 5

    const/4 v0, 0x0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;->this$0:Lcom/sekai/bank/network/ApiClient;

    invoke-static {v1}, Lcom/sekai/bank/network/ApiClient;->-$$Nest$fgettokenManager(Lcom/sekai/bank/network/ApiClient;)Lcom/sekai/bank/utils/TokenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sekai/bank/utils/TokenManager;->getRefreshToken()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    .line 271
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 273
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    invoke-direct {p0, v1}, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;->executeTokenRefresh(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Token refresh failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SekaiBank-API"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;->isAuthEndpoint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;->getAccessTokenWithTimeout()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 218
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 222
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;->addAuthHeader(Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v1

    .line 223
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;->isRefreshEndpoint(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 226
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 227
    invoke-direct {p0, p1, v0}, Lcom/sekai/bank/network/ApiClient$AuthInterceptor;->handleTokenRefresh(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    .line 219
    :cond_3
    :goto_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
