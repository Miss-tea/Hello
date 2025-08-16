.class public Lcom/sekai/bank/models/responses/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/sekai/bank/models/responses/ApiResponse;->success:Z

    .line 20
    iput-object p2, p0, Lcom/sekai/bank/models/responses/ApiResponse;->error:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/sekai/bank/models/responses/ApiResponse;->success:Z

    .line 14
    iput-object p2, p0, Lcom/sekai/bank/models/responses/ApiResponse;->message:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/sekai/bank/models/responses/ApiResponse;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/sekai/bank/models/responses/ApiResponse;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/sekai/bank/models/responses/ApiResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/sekai/bank/models/responses/ApiResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/sekai/bank/models/responses/ApiResponse;->success:Z

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/sekai/bank/models/responses/ApiResponse;->data:Ljava/lang/Object;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/sekai/bank/models/responses/ApiResponse;->error:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/sekai/bank/models/responses/ApiResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/sekai/bank/models/responses/ApiResponse;->success:Z

    return-void
.end method
