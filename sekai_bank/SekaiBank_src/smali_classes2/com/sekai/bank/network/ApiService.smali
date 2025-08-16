.class public interface abstract Lcom/sekai/bank/network/ApiService;
.super Ljava/lang/Object;
.source "ApiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sekai/bank/network/ApiService$RefreshTokenRequest;
    }
.end annotation


# virtual methods
.method public abstract changePin(Lcom/sekai/bank/models/requests/PinRequest;)Lretrofit2/Call;
    .param p1    # Lcom/sekai/bank/models/requests/PinRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sekai/bank/models/requests/PinRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "auth/pin/change"
    .end annotation
.end method

.method public abstract findUserByUsername(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "username"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/User;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "user/search/{username}"
    .end annotation
.end method

.method public abstract getBalance()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/responses/BalanceResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "user/balance"
    .end annotation
.end method

.method public abstract getFlag(Lcom/sekai/bank/models/requests/FlagRequest;)Lretrofit2/Call;
    .param p1    # Lcom/sekai/bank/models/requests/FlagRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sekai/bank/models/requests/FlagRequest;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "flag"
    .end annotation
.end method

.method public abstract getProfile()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/User;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "user/profile"
    .end annotation
.end method

.method public abstract getRecentTransactions()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Ljava/util/List<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "transactions/recent"
    .end annotation
.end method

.method public abstract getTransaction(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "transactions/{id}"
    .end annotation
.end method

.method public abstract getTransactions(II)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Ljava/util/List<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "transactions"
    .end annotation
.end method

.method public abstract getUserProfile()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/User;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "user/profile"
    .end annotation
.end method

.method public abstract healthCheck()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/responses/HealthResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "health"
    .end annotation
.end method

.method public abstract login(Lcom/sekai/bank/models/requests/LoginRequest;)Lretrofit2/Call;
    .param p1    # Lcom/sekai/bank/models/requests/LoginRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sekai/bank/models/requests/LoginRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/responses/AuthResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/login"
    .end annotation
.end method

.method public abstract logout()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/logout"
    .end annotation
.end method

.method public abstract refreshToken(Lcom/sekai/bank/network/ApiService$RefreshTokenRequest;)Lretrofit2/Call;
    .param p1    # Lcom/sekai/bank/network/ApiService$RefreshTokenRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sekai/bank/network/ApiService$RefreshTokenRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/responses/AuthResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/refresh"
    .end annotation
.end method

.method public abstract register(Lcom/sekai/bank/models/requests/RegisterRequest;)Lretrofit2/Call;
    .param p1    # Lcom/sekai/bank/models/requests/RegisterRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sekai/bank/models/requests/RegisterRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/responses/AuthResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/register"
    .end annotation
.end method

.method public abstract sendMoney(Lcom/sekai/bank/models/requests/SendMoneyRequest;)Lretrofit2/Call;
    .param p1    # Lcom/sekai/bank/models/requests/SendMoneyRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sekai/bank/models/requests/SendMoneyRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "transactions/send"
    .end annotation
.end method

.method public abstract setupPin(Lcom/sekai/bank/models/requests/PinRequest;)Lretrofit2/Call;
    .param p1    # Lcom/sekai/bank/models/requests/PinRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sekai/bank/models/requests/PinRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/pin/setup"
    .end annotation
.end method

.method public abstract verifyPin(Lcom/sekai/bank/models/requests/PinRequest;)Lretrofit2/Call;
    .param p1    # Lcom/sekai/bank/models/requests/PinRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sekai/bank/models/requests/PinRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/pin/verify"
    .end annotation
.end method
