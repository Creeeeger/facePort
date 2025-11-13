.class public final Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$1;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget p1, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$1;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
