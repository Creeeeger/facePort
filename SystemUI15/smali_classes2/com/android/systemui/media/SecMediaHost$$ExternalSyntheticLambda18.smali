.class public final synthetic Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda18;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda18;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda18;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/Boolean;

    check-cast p1, Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;->onMediaVisibilityChanged(Z)V

    return-void

    :pswitch_0
    check-cast p0, Landroid/content/res/Configuration;

    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->updateWidth()V

    iget-object p1, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
