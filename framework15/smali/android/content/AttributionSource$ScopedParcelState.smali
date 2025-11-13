.class public Landroid/content/AttributionSource$ScopedParcelState;
.super Ljava/lang/Object;
.source "AttributionSource.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AttributionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScopedParcelState"
.end annotation


# instance fields
.field private final blacklist mParcel:Landroid/os/Parcel;


# direct methods
.method public constructor blacklist <init>(Landroid/content/AttributionSource;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/content/AttributionSource$ScopedParcelState;->mParcel:Landroid/os/Parcel;

    iget-object v0, p0, Landroid/content/AttributionSource$ScopedParcelState;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/AttributionSource$ScopedParcelState;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    iget-object v0, p0, Landroid/content/AttributionSource$ScopedParcelState;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public blacklist getParcel()Landroid/os/Parcel;
    .locals 1

    iget-object v0, p0, Landroid/content/AttributionSource$ScopedParcelState;->mParcel:Landroid/os/Parcel;

    return-object v0
.end method
