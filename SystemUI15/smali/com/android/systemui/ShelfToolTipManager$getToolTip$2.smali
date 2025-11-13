.class public final Lcom/android/systemui/ShelfToolTipManager$getToolTip$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ShelfToolTipManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ShelfToolTipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager$getToolTip$2;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/ShelfToolTipManager$getToolTip$2;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    iget v0, p1, Lcom/android/systemui/ShelfToolTipManager;->mOrientation:I

    iget-object p1, p1, Lcom/android/systemui/ShelfToolTipManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/ShelfToolTipManager$getToolTip$2;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    iget-object p1, p1, Lcom/android/systemui/ShelfToolTipManager;->mContext:Landroid/content/Context;

    const-string v0, "NotificationSettingsToolTipShown"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager$getToolTip$2;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    iput-boolean v1, p0, Lcom/android/systemui/ShelfToolTipManager;->alreadyToolTipShown:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    :cond_0
    return-void
.end method
