.class Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSimStateChanged(III)V
    .locals 0

    sget-boolean p1, Lcom/android/systemui/CscRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mCurrentSimState:I

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->updateText(I)V

    :cond_0
    return-void
.end method
