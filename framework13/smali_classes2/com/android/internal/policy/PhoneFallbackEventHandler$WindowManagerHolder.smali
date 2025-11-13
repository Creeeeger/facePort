.class Lcom/android/internal/policy/PhoneFallbackEventHandler$WindowManagerHolder;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneFallbackEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowManagerHolder"
.end annotation


# static fields
.field static final blacklist sWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 694
    nop

    .line 695
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 694
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
