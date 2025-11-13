.class public final Lcom/google/android/gms/internal/common/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.0"


# static fields
.field public static final zza:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x2000000

    .line 1
    sput v0, Lcom/google/android/gms/internal/common/zzd;->zza:I

    return-void
.end method

.method public static zza(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
