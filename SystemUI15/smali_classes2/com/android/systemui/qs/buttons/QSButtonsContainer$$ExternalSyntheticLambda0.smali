.class public final synthetic Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/buttons/QSButtonsContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    sget v0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "split_quick_panel"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->updateButtonsContainerWidth()V

    :cond_0
    return-void
.end method
