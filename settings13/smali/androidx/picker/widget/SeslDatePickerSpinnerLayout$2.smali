.class Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;
.super Ljava/lang/Object;
.source "SeslDatePickerSpinnerLayout.java"

# interfaces
.implements Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0

    .line 154
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroidx/picker/widget/SeslNumberPicker;II)V
    .locals 8

    .line 157
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$100(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 159
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$300(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$500(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$402(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;I)I

    .line 161
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$700(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$602(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;I)I

    .line 162
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$900(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$802(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;I)I

    .line 169
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$1000(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Landroidx/picker/widget/SeslNumberPicker;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    .line 170
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    .line 172
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$300(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    .line 174
    invoke-static {v5}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v6}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$1100(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v6

    .line 173
    invoke-static {p1, v0, v5, v6}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$1200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZ)I

    move-result p1

    :cond_1
    if-ne p2, p1, :cond_2

    if-eq p3, v4, :cond_3

    :cond_2
    if-ne p2, v4, :cond_4

    if-ne p3, p1, :cond_4

    .line 179
    :cond_3
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 181
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$300(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 182
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1, p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$802(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;I)I

    goto :goto_0

    .line 186
    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->add(II)V

    .line 188
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$300(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 189
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1, p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$812(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;I)I

    :cond_5
    :goto_0
    move p1, v3

    goto/16 :goto_2

    .line 193
    :cond_6
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$1300(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Landroidx/picker/widget/SeslNumberPicker;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0xb

    if-ne p2, p1, :cond_7

    if-eqz p3, :cond_8

    :cond_7
    if-nez p2, :cond_9

    if-ne p3, p1, :cond_9

    .line 195
    :cond_8
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 197
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$300(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 198
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1, p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$602(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;I)I

    goto :goto_1

    .line 202
    :cond_9
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 204
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$300(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 205
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1, p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$612(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;I)I

    :cond_a
    :goto_1
    move p1, v3

    move p2, v4

    goto :goto_3

    .line 210
    :cond_b
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$1400(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Landroidx/picker/widget/SeslNumberPicker;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 212
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, v4, p3}, Ljava/util/Calendar;->add(II)V

    .line 215
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$300(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 216
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1, p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$412(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;I)I

    :cond_c
    move p1, v4

    :goto_2
    move p2, p1

    .line 226
    :goto_3
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$300(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 227
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$400(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I

    move-result v0

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v5}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$600(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I

    move-result v5

    iget-object v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    .line 228
    invoke-static {v6}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$1100(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v6

    .line 227
    invoke-static {p3, v0, v5, v6}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$1200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZ)I

    move-result p3

    .line 229
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$800(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I

    move-result v0

    if-le v0, p3, :cond_d

    .line 230
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0, p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$802(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;I)I

    .line 232
    :cond_d
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$1100(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 233
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, p3, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 234
    invoke-static {p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$1500(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v6}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$400(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I

    move-result v6

    iget-object v7, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$600(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I

    move-result v7

    .line 233
    invoke-static {v0, v5, v6, v7}, Landroidx/reflect/lunarcalendar/SeslSolarLunarTablesReflector;->isLeapMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;II)Z

    move-result v0

    invoke-static {p3, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$1102(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;Z)Z

    .line 240
    :cond_e
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 241
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 242
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 244
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$300(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 245
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$400(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I

    move-result p3

    .line 246
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$600(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I

    move-result v0

    .line 247
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$800(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I

    move-result v1

    .line 250
    :cond_f
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2, p3, v0, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$1600(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;III)V

    if-nez p1, :cond_10

    if-eqz p2, :cond_11

    .line 252
    :cond_10
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p3, v3, v3, p1, p2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$1700(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;ZZZZ)V

    .line 254
    :cond_11
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->access$1800(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    return-void

    .line 222
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
