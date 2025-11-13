.class public Lcom/android/settingslib/applications/AppFileSizeFormatter$BytesResult;
.super Ljava/lang/Object;
.source "AppFileSizeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/AppFileSizeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesResult"
.end annotation


# instance fields
.field public final roundedBytes:J

.field public final units:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/settingslib/applications/AppFileSizeFormatter$BytesResult;->value:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/android/settingslib/applications/AppFileSizeFormatter$BytesResult;->units:Ljava/lang/String;

    .line 48
    iput-wide p3, p0, Lcom/android/settingslib/applications/AppFileSizeFormatter$BytesResult;->roundedBytes:J

    return-void
.end method
