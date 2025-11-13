.class public final Lcom/android/systemui/accessibility/WindowMagnificationSettings$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iget-object p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda3;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
