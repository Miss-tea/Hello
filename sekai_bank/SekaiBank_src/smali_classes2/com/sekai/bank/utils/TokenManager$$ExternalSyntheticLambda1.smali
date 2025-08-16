.class public final synthetic Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/sekai/bank/utils/TokenManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sekai/bank/utils/TokenManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda1;->f$0:Lcom/sekai/bank/utils/TokenManager;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda1;->f$0:Lcom/sekai/bank/utils/TokenManager;

    invoke-virtual {v0}, Lcom/sekai/bank/utils/TokenManager;->lambda$isTokenValid$1$com-sekai-bank-utils-TokenManager()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
