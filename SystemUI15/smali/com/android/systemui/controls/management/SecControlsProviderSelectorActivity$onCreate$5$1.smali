.class public final Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$5$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$5$1;->this$0:Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$5$1;->this$0:Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;

    sget p1, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->handleDone()V

    return-void
.end method
