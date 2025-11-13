.class public final Lcom/android/settingslib/core/instrumentation/SettingsJankMonitor$detectToggleJank$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/core/instrumentation/SettingsJankMonitor$detectToggleJank$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/core/instrumentation/SettingsJankMonitor$detectToggleJank$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/core/instrumentation/SettingsJankMonitor$detectToggleJank$1;->INSTANCE:Lcom/android/settingslib/core/instrumentation/SettingsJankMonitor$detectToggleJank$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget-object p0, Lcom/android/settingslib/core/instrumentation/SettingsJankMonitor;->jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v0, 0x39

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method
