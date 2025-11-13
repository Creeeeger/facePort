.class Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;
.super Ljava/lang/Object;
.source "HEIFParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/motionphoto/utils/HEIFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemReference"
.end annotation


# instance fields
.field blacklist itemID:I

.field blacklist referenceItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

    iput-object p1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;->this$0:Lcom/samsung/android/motionphoto/utils/HEIFParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;->referenceItems:Ljava/util/Vector;

    return-void
.end method
