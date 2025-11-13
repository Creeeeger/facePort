.class Landroid/graphics/drawable/AnimatedImageDrawable$State;
.super Ljava/lang/Object;
.source "AnimatedImageDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedImageDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# instance fields
.field private final greylist-max-o mAssetFd:Landroid/content/res/AssetFileDescriptor;

.field greylist-max-o mAutoMirrored:Z

.field private final greylist-max-o mInputStream:Ljava/io/InputStream;

.field final greylist-max-o mNativePtr:J

.field greylist-max-o mRepeatCount:I

.field greylist-max-o mThemeAttrs:[I

.field final synthetic blacklist this$0:Landroid/graphics/drawable/AnimatedImageDrawable;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/drawable/AnimatedImageDrawable;JLjava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V
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

    iput-object p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->this$0:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mThemeAttrs:[I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    const/4 p1, -0x2

    iput p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    iput-wide p2, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    iput-object p4, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mInputStream:Ljava/io/InputStream;

    iput-object p5, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method
