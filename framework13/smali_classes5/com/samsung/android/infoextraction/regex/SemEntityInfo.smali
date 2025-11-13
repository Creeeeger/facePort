.class public Lcom/samsung/android/infoextraction/regex/SemEntityInfo;
.super Ljava/lang/Object;
.source "SemEntityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/infoextraction/regex/SemEntityInfo$Type;
    }
.end annotation


# instance fields
.field private blacklist dateInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist dateMillisInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist emailAddressInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist phoneNumInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist timeInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist timeMillisInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist urlInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    .line 88
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 286
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 291
    return-void
.end method

.method public blacklist deleteInfo(II)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "type"    # I

    .line 215
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 275
    return v1

    .line 265
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 266
    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    return v0

    .line 269
    :cond_0
    return v1

    .line 257
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 258
    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 259
    return v0

    .line 261
    :cond_1
    return v1

    .line 249
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 250
    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 251
    return v0

    .line 253
    :cond_2
    return v1

    .line 241
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 242
    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 243
    return v0

    .line 245
    :cond_3
    return v1

    .line 233
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_4

    .line 234
    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 235
    return v0

    .line 237
    :cond_4
    return v1

    .line 225
    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    .line 226
    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 227
    return v0

    .line 229
    :cond_5
    return v1

    .line 217
    :pswitch_6
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_6

    .line 218
    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 219
    return v0

    .line 221
    :cond_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getCount(I)I
    .locals 1
    .param p1, "type"    # I

    .line 178
    packed-switch p1, :pswitch_data_0

    .line 203
    const/4 v0, 0x0

    return v0

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 195
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 192
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 189
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 186
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 183
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 180
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getInfoList(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    packed-switch p1, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    return-object v0

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    return-object v0

    .line 113
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    return-object v0

    .line 110
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    return-object v0

    .line 107
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    return-object v0

    .line 104
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    return-object v0

    .line 101
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setInfo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 136
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    goto :goto_0

    .line 154
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    goto :goto_0

    .line 150
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    goto :goto_0

    .line 146
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    goto :goto_0

    .line 142
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    goto :goto_0

    .line 138
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    nop

    .line 168
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
