.class public final Lcom/android/settings/notification/modes/IconOptionsProvider$IconInfo;
.super Ljava/lang/Record;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "resId",
        "description"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        Ljava/lang/String;
    }
.end annotation


# instance fields
.field public final description:Ljava/lang/String;

.field public final resId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/settings/notification/modes/IconOptionsProvider$IconInfo;->resId:I

    iput-object p2, p0, Lcom/android/settings/notification/modes/IconOptionsProvider$IconInfo;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods


