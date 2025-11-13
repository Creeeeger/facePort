.class Landroid/mtp/MtpPropertyGroup$Property;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpPropertyGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Property"
.end annotation


# instance fields
.field greylist-max-o code:I

.field greylist-max-o column:I

.field final synthetic blacklist this$0:Landroid/mtp/MtpPropertyGroup;

.field greylist-max-o type:I


# direct methods
.method constructor blacklist <init>(Landroid/mtp/MtpPropertyGroup;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup$Property;->this$0:Landroid/mtp/MtpPropertyGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iput p3, p0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    iput p4, p0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    return-void
.end method
