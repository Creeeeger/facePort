.class public final synthetic Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/share/structure/DBShareComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/share/structure/DBShareComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda13;->f$0:Lcom/samsung/android/settings/share/structure/DBShareComponent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda13;->f$0:Lcom/samsung/android/settings/share/structure/DBShareComponent;

    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    sget v0, Lcom/samsung/android/settings/share/SelectAppActivity;->$r8$clinit:I

    iget-object p1, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mLabelPair:Landroid/util/Pair;

    if-nez p1, :cond_0

    const-string p1, ""

    invoke-static {p1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mLabelPair:Landroid/util/Pair;

    return-void
.end method
