.class public final Landroid/widget/RemoteViews$DrawInstructions;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrawInstructions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$DrawInstructions$Builder;
    }
.end annotation


# static fields
.field private static final blacklist VERSION:J = 0x1L


# instance fields
.field final blacklist mInstructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/widget/RemoteViews$DrawInstructions;
    .locals 0

    invoke-static {p0}, Landroid/widget/RemoteViews$DrawInstructions;->readFromParcel(Landroid/os/Parcel;)Landroid/widget/RemoteViews$DrawInstructions;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smwriteToParcel(Landroid/widget/RemoteViews$DrawInstructions;Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews$DrawInstructions;->writeToParcel(Landroid/widget/RemoteViews$DrawInstructions;Landroid/os/Parcel;I)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DrawInstructions cannot be instantiate without instructions"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/RemoteViews$DrawInstructions;->mInstructions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v2, v1

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/widget/RemoteViews$DrawInstructions;->mInstructions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Landroid/widget/RemoteViews$DrawInstructions-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$DrawInstructions;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static whitelist getSupportedVersion()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/widget/RemoteViews$DrawInstructions;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/widget/RemoteViews$DrawInstructions;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$DrawInstructions;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method private static blacklist writeToParcel(Landroid/widget/RemoteViews$DrawInstructions;Landroid/os/Parcel;I)V
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$DrawInstructions;->mInstructions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBlob([B)V

    goto :goto_0

    :cond_1
    return-void
.end method
