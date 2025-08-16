.class public final synthetic Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sekai/bank/MainActivity;

.field public final synthetic f$1:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/sekai/bank/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda4;->f$0:Lcom/sekai/bank/MainActivity;

    iput-object p2, p0, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda4;->f$0:Lcom/sekai/bank/MainActivity;

    iget-object v1, p0, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/sekai/bank/MainActivity;->lambda$checkAuthentication$0$com-sekai-bank-MainActivity(Ljava/lang/Boolean;)V

    return-void
.end method
