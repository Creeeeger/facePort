.class Lcom/android/systemui/ScreenDecorations$8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mLogger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    invoke-virtual {p2, p1}, Lcom/android/systemui/log/ScreenDecorationsLogger;->logUserSwitched(I)V

    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$6;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/UserSettingObserver;->setUserId(I)V

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$6;

    invoke-virtual {p1}, Lcom/android/systemui/qs/UserSettingObserver;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    return-void
.end method
