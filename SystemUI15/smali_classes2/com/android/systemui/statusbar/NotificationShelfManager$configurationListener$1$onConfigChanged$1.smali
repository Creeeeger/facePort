.class public final Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1$onConfigChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShelfManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1$onConfigChanged$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1$onConfigChanged$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1$onConfigChanged$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130d0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f13038d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mSettingButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    const-string v5, ","

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mSettingButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1$onConfigChanged$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateClearButton()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1$onConfigChanged$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateAccessibility()V

    return-void
.end method
