.class public abstract Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public ctv:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLoggingId()Ljava/lang/String;
.end method

.method public abstract getLoggingValue()Ljava/lang/String;
.end method

.method public abstract getMicMode()I
.end method

.method public abstract getText()Ljava/lang/String;
.end method
