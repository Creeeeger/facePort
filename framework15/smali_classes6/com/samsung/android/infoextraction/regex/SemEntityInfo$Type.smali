.class public Lcom/samsung/android/infoextraction/regex/SemEntityInfo$Type;
.super Ljava/lang/Object;
.source "SemEntityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/infoextraction/regex/SemEntityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Type"
.end annotation


# static fields
.field public static final whitelist DATE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.0"
    .end annotation
.end field

.field public static final whitelist DATE_MILLISECOND:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.0"
    .end annotation
.end field

.field public static final whitelist EMAIL_ADDRESS:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.0"
    .end annotation
.end field

.field public static final whitelist PHONE_NUMBER:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.0"
    .end annotation
.end field

.field public static final whitelist TIME:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.0"
    .end annotation
.end field

.field public static final whitelist TIME_MILLISECOND:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.0"
    .end annotation
.end field

.field public static final whitelist URL:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.0"
    .end annotation
.end field


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/infoextraction/regex/SemEntityInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo$Type;->this$0:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
