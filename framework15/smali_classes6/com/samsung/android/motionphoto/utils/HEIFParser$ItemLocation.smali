.class Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;
.super Ljava/lang/Object;
.source "HEIFParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/motionphoto/utils/HEIFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLocation"
.end annotation


# instance fields
.field public blacklist base_offset:J

.field public blacklist construction_method:I

.field public blacklist itemID:J

.field public blacklist length:J

.field public blacklist offset:J

.field final synthetic blacklist this$0:Lcom/samsung/android/motionphoto/utils/HEIFParser;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/motionphoto/utils/HEIFParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->this$0:Lcom/samsung/android/motionphoto/utils/HEIFParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
