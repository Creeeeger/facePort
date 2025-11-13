.class public final Landroid/app/contextualsearch/ContextualSearchManager;
.super Ljava/lang/Object;
.source "ContextualSearchManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contextualsearch/ContextualSearchManager$Entrypoint;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_LAUNCH_CONTEXTUAL_SEARCH:Ljava/lang/String; = "android.app.contextualsearch.action.LAUNCH_CONTEXTUAL_SEARCH"

.field private static final blacklist DEBUG:Z = false

.field public static final whitelist ENTRYPOINT_LONG_PRESS_HOME:I = 0x2

.field public static final whitelist ENTRYPOINT_LONG_PRESS_META:I = 0xa

.field public static final whitelist ENTRYPOINT_LONG_PRESS_NAV_HANDLE:I = 0x1

.field public static final whitelist ENTRYPOINT_LONG_PRESS_OVERVIEW:I = 0x3

.field public static final whitelist ENTRYPOINT_OVERVIEW_ACTION:I = 0x4

.field public static final whitelist ENTRYPOINT_OVERVIEW_MENU:I = 0x5

.field public static final whitelist ENTRYPOINT_SYSTEM_ACTION:I = 0x9

.field public static final whitelist EXTRA_ENTRYPOINT:Ljava/lang/String; = "android.app.contextualsearch.extra.ENTRYPOINT"

.field public static final whitelist EXTRA_FLAG_SECURE_FOUND:Ljava/lang/String; = "android.app.contextualsearch.extra.FLAG_SECURE_FOUND"

.field public static final blacklist EXTRA_INVOCATION_TIME_MS:Ljava/lang/String; = "android.app.contextualsearch.extra.INVOCATION_TIME_MS"

.field public static final whitelist EXTRA_IS_MANAGED_PROFILE_VISIBLE:Ljava/lang/String; = "android.app.contextualsearch.extra.IS_MANAGED_PROFILE_VISIBLE"

.field public static final whitelist EXTRA_SCREENSHOT:Ljava/lang/String; = "android.app.contextualsearch.extra.SCREENSHOT"

.field public static final whitelist EXTRA_TOKEN:Ljava/lang/String; = "android.app.contextualsearch.extra.TOKEN"

.field public static final whitelist EXTRA_VISIBLE_PACKAGE_NAMES:Ljava/lang/String; = "android.app.contextualsearch.extra.VISIBLE_PACKAGE_NAMES"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mService:Landroid/app/contextualsearch/IContextualSearchManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/app/contextualsearch/ContextualSearchManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/contextualsearch/ContextualSearchManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "contextual_search"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contextualsearch/IContextualSearchManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/contextualsearch/ContextualSearchManager;->mService:Landroid/app/contextualsearch/IContextualSearchManager;

    return-void
.end method


# virtual methods
.method public whitelist startContextualSearch(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchManager;->mService:Landroid/app/contextualsearch/IContextualSearchManager;

    invoke-interface {v0, p1}, Landroid/app/contextualsearch/IContextualSearchManager;->startContextualSearch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
