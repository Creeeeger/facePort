.class Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;
.super Ljava/lang/Object;
.source "HEIFParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/motionphoto/utils/HEIFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XMPInformation"
.end annotation


# instance fields
.field public blacklist offset:J

.field public blacklist size:J

.field final synthetic blacklist this$0:Lcom/samsung/android/motionphoto/utils/HEIFParser;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/motionphoto/utils/HEIFParser;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "offset",
            "size"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;->this$0:Lcom/samsung/android/motionphoto/utils/HEIFParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;->offset:J

    iput-wide p4, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;->size:J

    return-void
.end method
