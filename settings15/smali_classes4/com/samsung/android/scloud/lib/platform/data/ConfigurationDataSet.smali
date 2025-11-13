.class public final Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;
.super Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method
