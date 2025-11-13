.class final Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;
.super Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener$Stub;
.source "VisualQueryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VisualQueryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccessibilityDetectionEnabledListenerWrapper"
.end annotation


# instance fields
.field private blacklist mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/service/voice/VisualQueryDetector;


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/VisualQueryDetector;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;->this$0:Landroid/service/voice/VisualQueryDetector;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener$Stub;-><init>()V

    iput-object p2, p0, Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;->mListener:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public blacklist onAccessibilityDetectionChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;->mListener:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
