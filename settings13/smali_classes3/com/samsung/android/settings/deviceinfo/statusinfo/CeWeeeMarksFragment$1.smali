.class Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment$1;
.super Ljava/lang/Object;
.source "CeWeeeMarksFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->initDescriptionViewLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;)Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x28

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoPreferenceController;->showRegulatoryInfo(Landroid/content/Context;I)V

    return-void
.end method
