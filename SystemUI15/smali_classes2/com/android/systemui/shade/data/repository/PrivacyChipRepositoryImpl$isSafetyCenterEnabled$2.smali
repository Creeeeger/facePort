.class final Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isSafetyCenterEnabled$2;
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
.field final synthetic this$0:Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isSafetyCenterEnabled$2;->this$0:Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Intent;

    check-cast p2, Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isSafetyCenterEnabled$2;->this$0:Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;->safetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

    invoke-virtual {p0}, Landroid/safetycenter/SafetyCenterManager;->isSafetyCenterEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
