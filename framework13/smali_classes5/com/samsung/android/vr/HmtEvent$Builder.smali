.class public Lcom/samsung/android/vr/HmtEvent$Builder;
.super Ljava/lang/Object;
.source "HmtEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vr/HmtEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field blacklist action:I

.field blacklist ids:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/vr/HmtEvent;
    .locals 1

    .line 46
    new-instance v0, Lcom/samsung/android/vr/HmtEvent;

    invoke-direct {v0, p0}, Lcom/samsung/android/vr/HmtEvent;-><init>(Lcom/samsung/android/vr/HmtEvent$Builder;)V

    return-object v0
.end method

.method public blacklist setAction(I)Lcom/samsung/android/vr/HmtEvent$Builder;
    .locals 0
    .param p1, "action"    # I

    .line 50
    iput p1, p0, Lcom/samsung/android/vr/HmtEvent$Builder;->action:I

    .line 51
    return-object p0
.end method

.method public blacklist setIds(Ljava/lang/String;)Lcom/samsung/android/vr/HmtEvent$Builder;
    .locals 0
    .param p1, "ids"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/vr/HmtEvent$Builder;->ids:Ljava/lang/String;

    .line 56
    return-object p0
.end method
