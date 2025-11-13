.class public final Lcom/google/android/gms/internal/base/zal;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# static fields
.field public static final zaa:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x2000000

    .line 1
    sput v0, Lcom/google/android/gms/internal/base/zal;->zaa:I

    return-void
.end method

.method public static zaa(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
