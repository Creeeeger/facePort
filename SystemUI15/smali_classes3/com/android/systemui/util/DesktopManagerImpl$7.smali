.class Lcom/android/systemui/util/DesktopManagerImpl$7;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/DesktopManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DesktopManagerImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$7;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo p2, "touchpad_enabled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$7;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0, p1}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$mgetDesktopSettingsValue(Lcom/android/systemui/util/DesktopManagerImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "true"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fputmIsTouchpadEnabled(Lcom/android/systemui/util/DesktopManagerImpl;Z)V

    :cond_0
    return-void
.end method
