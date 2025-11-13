.class final Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$disableEsimErrorMessage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$disableEsimErrorMessage$1;->$resources:Landroid/content/res/Resources;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Intent;

    check-cast p2, Landroid/content/BroadcastReceiver;

    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$disableEsimErrorMessage$1;->$resources:Landroid/content/res/Resources;

    const p1, 0x7f1305e0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
