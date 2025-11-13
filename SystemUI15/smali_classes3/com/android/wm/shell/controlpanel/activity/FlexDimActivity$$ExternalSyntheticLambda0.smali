.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    sget-object v0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->sFlexDimActivity:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    const v0, 0x7f0d0105

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->mIsScreenOffMode:Z

    return-void
.end method
