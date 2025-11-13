.class Lcom/samsung/android/allshare/EventListenerList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "IAppControlAPI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x52bc38a70445ad7fL


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1573
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1581
    invoke-virtual {p0, p1}, Lcom/samsung/android/allshare/EventListenerList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1582
    const/4 v0, 0x0

    return v0

    .line 1583
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
