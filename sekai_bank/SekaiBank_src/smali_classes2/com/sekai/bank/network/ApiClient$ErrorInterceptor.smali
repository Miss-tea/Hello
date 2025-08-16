.class Lcom/sekai/bank/network/ApiClient$ErrorInterceptor;
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
    name = "ErrorInterceptor"
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

    .line 308
    iput-object p1, p0, Lcom/sekai/bank/network/ApiClient$ErrorInterceptor;->this$0:Lcom/sekai/bank/network/ApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sekai/bank/network/ApiClient;Lcom/sekai/bank/network/ApiClient-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sekai/bank/network/ApiClient$ErrorInterceptor;-><init>(Lcom/sekai/bank/network/ApiClient;)V

    return-void
.end method

.method private handleErrorCode(I)V
    .locals 1

    const/16 v0, 0x193

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/sekai/bank/network/ApiClient$ErrorInterceptor;->this$0:Lcom/sekai/bank/network/ApiClient;

    invoke-static {p1}, Lcom/sekai/bank/network/ApiClient;->-$$Nest$fgettokenManager(Lcom/sekai/bank/network/ApiClient;)Lcom/sekai/bank/utils/TokenManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/utils/TokenManager;->clearTokens()Ljava/util/concurrent/CompletableFuture;

    :goto_0
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 313
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sekai/bank/network/ApiClient$ErrorInterceptor;->handleErrorCode(I)V

    return-object p1
.end method
