.class public final synthetic Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
