.class public Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final BG_COLOR:I = -0x1000000

.field public static final BG_COLOR_ONFOCUS:I

.field public static final TAG:Ljava/lang/String; = "LSO"

.field public static final TXT_COLOR:I = -0x1


# instance fields
.field public mBtn:Landroid/widget/Button;

.field public mContainer:Landroid/widget/LinearLayout;

.field public final mContext:Landroid/content/Context;

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mImageMaxSize:I

.field public mImgView:Landroid/widget/ImageView;

.field public mPhoneAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xdb

    const/16 v1, 0xe2

    const/16 v2, 0xc8

    const/16 v3, 0x52

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->BG_COLOR_ONFOCUS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->initialize()V

    return-void
.end method


# virtual methods
.method public final callEmergencyNumber()V
    .locals 5

    const-string v0, "Failed to place Emergency call"

    const-string v1, "LSO"

    const-string/jumbo v2, "tel:"

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mPhoneAction:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public final initialize()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImageMaxSize:I

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    const v1, 0x1080782

    invoke-static {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImageMaxSize:I

    invoke-static {v0, v3, v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->scaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_0
    new-instance v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    const v4, 0x1040a0e

    invoke-static {v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mPhoneAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->callEmergencyNumber()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    sget p1, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->BG_COLOR_ONFOCUS:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "LSO"

    const-string v1, "SetAttribute("

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "epw:phoneNumber"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mPhoneAction:Ljava/lang/String;

    goto/16 :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_0

    :cond_1
    const-string v1, "android:text"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "epw:showBG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_3
    const-string v1, "epw:showText"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const-string v1, "android:maxLines"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setMaxLines(I)V

    goto :goto_1

    :cond_6
    const-string v1, "android:gravity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    :cond_7
    const-string v1, "android:orientation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1

    :cond_8
    const-string v1, "android:src"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    check-cast p2, Ljava/lang/String;

    iget p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImageMaxSize:I

    invoke-static {p2, p1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "Exception: "

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method
