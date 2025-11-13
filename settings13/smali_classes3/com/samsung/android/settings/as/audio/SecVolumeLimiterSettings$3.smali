.class Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$3;
.super Ljava/lang/Object;
.source "SecVolumeLimiterSettings.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->showSetPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$3;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 312
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$3;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->handleNext()V

    const/4 p0, 0x1

    return p0
.end method
