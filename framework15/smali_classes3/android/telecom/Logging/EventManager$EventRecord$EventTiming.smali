.class public Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;
.super Landroid/telecom/Logging/TimedEvent;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/EventManager$EventRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventTiming"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/telecom/Logging/TimedEvent<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public blacklist name:Ljava/lang/String;

.field final synthetic blacklist this$1:Landroid/telecom/Logging/EventManager$EventRecord;

.field public blacklist time:J


# direct methods
.method public constructor blacklist <init>(Landroid/telecom/Logging/EventManager$EventRecord;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;->this$1:Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-direct {p0}, Landroid/telecom/Logging/TimedEvent;-><init>()V

    iput-object p2, p0, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;->name:Ljava/lang/String;

    iput-wide p3, p0, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;->time:J

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTime()J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;->time:J

    return-wide v0
.end method
