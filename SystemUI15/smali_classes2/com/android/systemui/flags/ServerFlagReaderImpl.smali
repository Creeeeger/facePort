.class public final Lcom/android/systemui/flags/ServerFlagReaderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/flags/ServerFlagReader;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final deviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final isTestHarness:Z

.field public final listeners:Ljava/util/List;

.field public final namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/util/DeviceConfigProxy;Ljava/util/concurrent/Executor;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->namespace:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->deviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    iput-object p3, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->executor:Ljava/util/concurrent/Executor;

    iput-boolean p4, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->isTestHarness:Z

    const-string p1, "ServerFlagReader"

    iput-object p1, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->listeners:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/flags/ServerFlagReaderImpl$onPropertiesChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/flags/ServerFlagReaderImpl$onPropertiesChangedListener$1;-><init>(Lcom/android/systemui/flags/ServerFlagReaderImpl;)V

    return-void
.end method
