.class public Lcom/sekai/bank/models/requests/FlagRequest;
.super Ljava/lang/Object;
.source "FlagRequest.java"


# instance fields
.field private unmask_flag:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/sekai/bank/models/requests/FlagRequest;->unmask_flag:Z

    return-void
.end method


# virtual methods
.method public getUnmaskFlag()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/sekai/bank/models/requests/FlagRequest;->unmask_flag:Z

    return v0
.end method

.method public setUnmaskFlag(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/sekai/bank/models/requests/FlagRequest;->unmask_flag:Z

    return-void
.end method
