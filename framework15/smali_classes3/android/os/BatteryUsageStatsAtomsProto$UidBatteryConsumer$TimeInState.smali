.class public final Landroid/os/BatteryUsageStatsAtomsProto$UidBatteryConsumer$TimeInState;
.super Ljava/lang/Object;
.source "BatteryUsageStatsAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryUsageStatsAtomsProto$UidBatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TimeInState"
.end annotation


# static fields
.field public static final blacklist BACKGROUND:I = 0x2

.field public static final blacklist FOREGROUND:I = 0x1

.field public static final blacklist FOREGROUND_SERVICE:I = 0x3

.field public static final blacklist PROCESS_STATE:J = 0x10e00000001L

.field public static final blacklist TIME_IN_STATE_MILLIS:J = 0x10300000002L

.field public static final blacklist UNSPECIFIED:I


# instance fields
.field final synthetic blacklist this$1:Landroid/os/BatteryUsageStatsAtomsProto$UidBatteryConsumer;


# direct methods
.method public constructor blacklist <init>(Landroid/os/BatteryUsageStatsAtomsProto$UidBatteryConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/os/BatteryUsageStatsAtomsProto$UidBatteryConsumer$TimeInState;->this$1:Landroid/os/BatteryUsageStatsAtomsProto$UidBatteryConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
