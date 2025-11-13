.class Landroid/media/Cea608CCParser;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea608CCParser$CCMemory;,
        Landroid/media/Cea608CCParser$DisplayListener;,
        Landroid/media/Cea608CCParser$CCData;,
        Landroid/media/Cea608CCParser$StyleCode;,
        Landroid/media/Cea608CCParser$PAC;,
        Landroid/media/Cea608CCParser$CCLineBuilder;,
        Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;
    }
.end annotation


# static fields
.field private static final greylist-max-o AOF:I = 0x22

.field private static final greylist-max-o AON:I = 0x23

.field private static final greylist-max-o BS:I = 0x21

.field private static final greylist-max-o CR:I = 0x2d

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o DER:I = 0x24

.field private static final greylist-max-o EDM:I = 0x2c

.field private static final greylist-max-o ENM:I = 0x2e

.field private static final greylist-max-o EOC:I = 0x2f

.field private static final greylist-max-o FON:I = 0x28

.field private static final greylist-max-o INVALID:I = -0x1

.field public static final greylist-max-o MAX_COLS:I = 0x20

.field public static final greylist-max-o MAX_ROWS:I = 0xf

.field private static final greylist-max-o MODE_PAINT_ON:I = 0x1

.field private static final greylist-max-o MODE_POP_ON:I = 0x3

.field private static final greylist-max-o MODE_ROLL_UP:I = 0x2

.field private static final greylist-max-o MODE_TEXT:I = 0x4

.field private static final greylist-max-o MODE_UNKNOWN:I = 0x0

.field private static final greylist-max-o RCL:I = 0x20

.field private static final greylist-max-o RDC:I = 0x29

.field private static final greylist-max-o RTD:I = 0x2b

.field private static final greylist-max-o RU2:I = 0x25

.field private static final greylist-max-o RU3:I = 0x26

.field private static final greylist-max-o RU4:I = 0x27

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Cea608CCParser"

.field private static final greylist-max-o TR:I = 0x2a

.field private static final greylist-max-o TS:C = '\u00a0'


# instance fields
.field private greylist-max-o mDisplay:Landroid/media/Cea608CCParser$CCMemory;

.field private final greylist-max-o mListener:Landroid/media/Cea608CCParser$DisplayListener;

.field private greylist-max-o mMode:I

.field private greylist-max-o mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

.field private greylist-max-o mPrevCtrlCode:I

.field private greylist-max-o mRollUpSize:I

.field private greylist-max-o mTextMem:Landroid/media/Cea608CCParser$CCMemory;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "Cea608CCParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/Cea608CCParser;->DEBUG:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/media/Cea608CCParser$DisplayListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    new-instance v0, Landroid/media/Cea608CCParser$CCMemory;

    invoke-direct {v0}, Landroid/media/Cea608CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    new-instance v0, Landroid/media/Cea608CCParser$CCMemory;

    invoke-direct {v0}, Landroid/media/Cea608CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    new-instance v0, Landroid/media/Cea608CCParser$CCMemory;

    invoke-direct {v0}, Landroid/media/Cea608CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroid/media/Cea608CCParser;->mTextMem:Landroid/media/Cea608CCParser$CCMemory;

    iput-object p1, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    return-void
.end method

.method private greylist-max-o getMemory()Landroid/media/Cea608CCParser$CCMemory;
    .locals 2

    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unrecoginized mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cea608CCParser"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mTextMem:Landroid/media/Cea608CCParser$CCMemory;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o handleCtrlCode(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getCtrlCode()I

    move-result v0

    iget v1, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget v1, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    if-ne v1, v0, :cond_0

    iput v3, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    return v2

    :cond_0
    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iput v3, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    const/4 v1, 0x0

    return v1

    :pswitch_1
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->swapMemory()V

    iput v4, p0, Landroid/media/Cea608CCParser;->mMode:I

    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    goto/16 :goto_1

    :pswitch_2
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    goto :goto_1

    :pswitch_3
    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    if-ne v1, v5, :cond_1

    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    iget v3, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    invoke-virtual {v1, v3}, Landroid/media/Cea608CCParser$CCMemory;->rollUp(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->cr()V

    :goto_0
    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    if-ne v1, v5, :cond_3

    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    goto :goto_1

    :pswitch_5
    iput v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    goto :goto_1

    :pswitch_6
    iput v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    iget-object v1, p0, Landroid/media/Cea608CCParser;->mTextMem:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    goto :goto_1

    :pswitch_7
    iput v2, p0, Landroid/media/Cea608CCParser;->mMode:I

    goto :goto_1

    :pswitch_8
    const-string v1, "Cea608CCParser"

    const-string v3, "Flash On"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_9
    add-int/lit8 v1, v0, -0x23

    iput v1, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    iget-object v1, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    :cond_2
    iput v5, p0, Landroid/media/Cea608CCParser;->mMode:I

    goto :goto_1

    :pswitch_a
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->der()V

    goto :goto_1

    :pswitch_b
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->bs()V

    goto :goto_1

    :pswitch_c
    iput v4, p0, Landroid/media/Cea608CCParser;->mMode:I

    nop

    :cond_3
    :goto_1
    iput v0, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    return v2

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-o handleDisplayableChars(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->isDisplayableChar()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1}, Landroid/media/Cea608CCParser$CCData;->-$$Nest$misExtendedChar(Landroid/media/Cea608CCParser$CCData;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Cea608CCParser$CCMemory;->bs()V

    :cond_1
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->writeText(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    :cond_2
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    :cond_3
    return v1
.end method

.method private greylist-max-o handleMidRowCode(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getMidRow()Landroid/media/Cea608CCParser$StyleCode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/Cea608CCParser$CCMemory;->writeMidRowCode(Landroid/media/Cea608CCParser$StyleCode;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o handlePACCode(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getPAC()Landroid/media/Cea608CCParser$PAC;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/Cea608CCParser$PAC;->getRow()I

    move-result v2

    iget v3, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    invoke-static {v1, v2, v3}, Landroid/media/Cea608CCParser$CCMemory;->-$$Nest$mmoveBaselineTo(Landroid/media/Cea608CCParser$CCMemory;II)V

    :cond_0
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/Cea608CCParser$CCMemory;->writePAC(Landroid/media/Cea608CCParser$PAC;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o handleTabOffsets(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getTabOffset()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/Cea608CCParser$CCMemory;->tab(I)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o swapMemory()V
    .locals 2

    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    iget-object v1, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    iput-object v1, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    iput-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    return-void
.end method

.method private greylist-max-o updateDisplay()V
    .locals 3

    iget-object v0, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    invoke-interface {v0}, Landroid/media/Cea608CCParser$DisplayListener;->getCaptionStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    iget-object v1, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    iget-object v2, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v2, v0}, Landroid/media/Cea608CCParser$CCMemory;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/Cea608CCParser$DisplayListener;->onDisplayChanged([Landroid/text/SpannableStringBuilder;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o parse([B)V
    .locals 4

    invoke-static {p1}, Landroid/media/Cea608CCParser$CCData;->fromByteArray([B)[Landroid/media/Cea608CCParser$CCData;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    sget-boolean v2, Landroid/media/Cea608CCParser;->DEBUG:Z

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Cea608CCParser$CCData;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cea608CCParser"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handleCtrlCode(Landroid/media/Cea608CCParser$CCData;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handleTabOffsets(Landroid/media/Cea608CCParser$CCData;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handlePACCode(Landroid/media/Cea608CCParser$CCData;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handleMidRowCode(Landroid/media/Cea608CCParser$CCData;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handleDisplayableChars(Landroid/media/Cea608CCParser$CCData;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
