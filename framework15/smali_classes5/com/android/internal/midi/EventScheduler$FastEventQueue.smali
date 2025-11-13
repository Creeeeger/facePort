.class public Lcom/android/internal/midi/EventScheduler$FastEventQueue;
.super Ljava/lang/Object;
.source "EventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/EventScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FastEventQueue"
.end annotation


# instance fields
.field volatile blacklist mEventsAdded:J

.field volatile blacklist mEventsRemoved:J

.field volatile blacklist mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

.field volatile blacklist mLast:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mLast:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsAdded:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsRemoved:J

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->-$$Nest$fputmNext(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mLast:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    invoke-static {v0, p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->-$$Nest$fputmNext(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    iput-object p1, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mLast:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    iget-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsAdded:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsAdded:J

    return-void
.end method

.method public blacklist remove()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsRemoved:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsRemoved:J

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    invoke-static {v0}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->-$$Nest$fgetmNext(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->-$$Nest$fputmNext(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    return-object v0
.end method

.method blacklist size()I
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsAdded:J

    iget-wide v2, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsRemoved:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
