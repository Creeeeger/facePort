.class Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "DeviceNameEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomLengthFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;I)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    .line 294
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 299
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 302
    iget-object p3, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {p3}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmErrorTextView(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/widget/TextView;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object p3, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {p3}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmDeviceNameScrollView(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/widget/ScrollView;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter$1;

    invoke-direct {p4, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter$1;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter;)V

    invoke-virtual {p3, p4}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 310
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 311
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x262a

    const-string p3, ""

    if-eq p0, p1, :cond_0

    const/16 p1, 0x271d

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p3

    .line 319
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmErrorTextView(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-object p2
.end method
