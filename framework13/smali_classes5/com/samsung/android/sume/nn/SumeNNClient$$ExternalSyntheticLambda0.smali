.class public final synthetic Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/nn/SumeNNClient;

.field public final synthetic blacklist f$1:[Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/nn/SumeNNClient;[Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/nn/SumeNNClient;

    iput-object p2, p0, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda0;->f$1:[Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/nn/SumeNNClient;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda0;->f$1:[Landroid/content/ContentValues;

    check-cast p1, Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/nn/SumeNNClient;->lambda$run$1$com-samsung-android-sume-nn-SumeNNClient([Landroid/content/ContentValues;Landroid/os/Messenger;)V

    return-void
.end method
