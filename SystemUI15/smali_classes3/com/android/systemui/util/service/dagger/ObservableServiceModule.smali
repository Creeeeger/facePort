.class public Lcom/android/systemui/util/service/dagger/ObservableServiceModule;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BASE_RECONNECT_DELAY_MS:Ljava/lang/String; = "base_reconnect_attempts"

.field public static final DUMPSYS_NAME:Ljava/lang/String; = "dumpsys_name"

.field public static final MAX_RECONNECT_ATTEMPTS:Ljava/lang/String; = "max_reconnect_attempts"

.field public static final MIN_CONNECTION_DURATION_MS:Ljava/lang/String; = "min_connection_duration_ms"

.field public static final OBSERVER:Ljava/lang/String; = "observer"

.field public static final SERVICE_CONNECTION:Ljava/lang/String; = "service_connection"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideBaseReconnectDelayMs(Landroid/content/res/Resources;)I
    .locals 1

    const v0, 0x7f0b0019

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public static providesMaxReconnectAttempts(Landroid/content/res/Resources;)I
    .locals 1

    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public static providesMinConnectionDuration(Landroid/content/res/Resources;)I
    .locals 1

    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method
