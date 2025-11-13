.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;->dismissTipPopup()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method
